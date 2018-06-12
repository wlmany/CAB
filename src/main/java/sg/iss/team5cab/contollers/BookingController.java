package sg.iss.team5cab.contollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sg.iss.team5cab.model.Booking;
import sg.iss.team5cab.model.Facility;
import sg.iss.team5cab.services.BookingService;

@RequestMapping(value="/booking")
@Controller
public class BookingController {
	@Autowired
    BookingService bService;
	//@Autowired
    //FacilityService fService; //need facility service interface
	
	@RequestMapping(value = "/create/{id}", method = RequestMethod.GET)
	public ModelAndView newBookingPage(@PathVariable int id) {
		ModelAndView mav = new ModelAndView("BookingFormNew");
	//	mav.addObject("facility", fService.findFacility(id));
		mav.addObject("availableDateList", bService.findAvailableDates(id));
		return mav;
	}

	@RequestMapping(value = "/create/{id}", method = RequestMethod.POST)
	public ModelAndView createNewStudent(@ModelAttribute Booking booking, 
			final RedirectAttributes redirectAttributes) {
		bService.createBooking(booking);
		String message = "New booking " + booking.getBookingID() + " was successfully created.";
		redirectAttributes.addFlashAttribute("message", message);
		return new ModelAndView("redirect:/booking/display");
	}

}
